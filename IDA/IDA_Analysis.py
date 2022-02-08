import pandas as pd
import tabula

file = r'C:\Users\felipe.jardim\Desktop\Felipe\ANTAQ\GMS\Dados\IDA\Portos_Publicos\RelRankingIDA.pdf'

table = tabula.read_pdf(file,pages='all')
print(table[0])